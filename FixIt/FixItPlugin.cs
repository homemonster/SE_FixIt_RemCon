using System.IO;
using System.Windows.Controls;
using NLog;
using Torch;
using Torch.API;
using Torch.API.Managers;
using Torch.API.Plugins;
using Torch.Managers.PatchManager;
using Torch.Views;

namespace FixIt
{
    public class FixItPlugin : TorchPluginBase, IWpfPlugin
    {
        public FixItConfig Config => _config?.Data;

        private UserControl _control;
        private Persistent<FixItConfig> _config;
        private static readonly Logger Log = LogManager.GetLogger("YourName");
        private PatchManager _pm;
        private PatchContext _context;

        public static FixItPlugin Instance { get; private set; }

        /// <inheritdoc />
        public UserControl GetControl() => _control ?? (_control = new PropertyGrid(){DataContext=Config, IsEnabled = false});

        public void Save()
        {
            _config.Save();
        }

        /// <inheritdoc />
        public override void Init(ITorchBase torch)
        {
            base.Init(torch);
            string path = Path.Combine(StoragePath, "FixIt.cfg");
            Log.Info($"Attempting to load config from {path}");
            _config = Persistent<FixItConfig>.Load(path);

            Instance = this;
            //_pm = torch.Managers.GetManager<PatchManager>();
            //_context = _pm.AcquireContext();
            torch.Managers.AddManager(new FixItManager(torch));
        }

        public override void Update()
        {
            
        }

        /// <inheritdoc />
        public override void Dispose()
        {

        }
    }
}
