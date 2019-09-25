using NLog;
using Sandbox.ModAPI;
using Sandbox.Game.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Torch.Managers.PatchManager;
using Torch.Utils;
using VRage.Game;
using VRage.Game.Entity;

namespace FixIt
{

    public class MyRemoteControlPatch
    {

        public static readonly Logger Log = LogManager.GetCurrentClassLogger();

        public static readonly Logger FULL_LOGGER = LogManager.GetLogger("DeleteTrackerFull");
        public static readonly Logger SHORT_LOGGER = LogManager.GetLogger("DeleteTrackerBasic");
        
        [ReflectedMethodInfo(typeof(MyRemoteControl), "Init")]
        private static readonly MethodInfo OnInitRequest;
        
        
        internal static readonly MethodInfo patchOnInitRequest =
            typeof(MyRemoteControlPatch).GetMethod(nameof(OnInitRequestImpl), BindingFlags.Static | BindingFlags.Public) ??
            throw new Exception("Failed to find patch method");

        public static void Patch(PatchContext ctx)
        {

            Log.Info("Процесс MyRemoteControl!");
            ReflectedManager.Process(typeof(MyRemoteControlPatch));
            Log.Info("Patched MyRemoteControl!");
            try
            {

                ctx.GetPattern(OnInitRequest).Suffixes.Add(patchOnInitRequest);

                Log.Info("Patched MyRemoteControl!");

            }
            catch (Exception e)
            {

                Log.Error(e, "Unable to patch MyRemoteControl!!!");
            }
        }

        public static void OnInitRequestImpl(MyRemoteControl __instance)
        {  if (__instance != null)
            {
                try
                {
                    Log.Error(" __instance = " + __instance.DisplayName);

                }
                catch (Exception e)
                {
                    Log.Error(e, "Error on DeleteTracking __instance!");
                    return;
                }
            }
        }
    }
}
