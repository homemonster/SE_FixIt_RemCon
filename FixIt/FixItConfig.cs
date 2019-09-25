using Torch;
using Torch.Views;

namespace FixIt
{
    public class FixItConfig : ViewModel
    {
        public FixItConfig()
        {
        }

        private bool _enableSomething = true;

        [Display(Name = "Enable", GroupName = "Example Group Name", Order = 0, Description = "Example description.")]
        public bool EnableSomething
        {

            get => _enableSomething;
            set => SetValue(ref _enableSomething, value);
        }
    }
}
