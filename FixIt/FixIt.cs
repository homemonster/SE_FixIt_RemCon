﻿using NLog;
using Sandbox.Game;
using System;
using System.Threading.Tasks;
using Torch.API;
using Torch.API.Managers;
using Torch.API.Session;
using Torch.Managers;
using Torch.Managers.PatchManager;
using Torch.Session;

namespace FixIt
{
    public class FixItManager : Manager
    {

        public static readonly Logger Log = LogManager.GetCurrentClassLogger();

        [Dependency]
        private TorchSessionManager sessionManager;

        [Dependency]
        private readonly PatchManager patchManager;
        private PatchContext ctx;

        public FixItManager(ITorchBase torchInstance)
            : base(torchInstance)
        {
        }

        /// <inheritdoc />
        public override void Attach()
        {

            base.Attach();

            sessionManager = Torch.Managers.GetManager<TorchSessionManager>();
            if (sessionManager != null)
                sessionManager.SessionStateChanged += SessionChanged;
            else
                Log.Warn("No session manager loaded!");

            if (ctx == null)
                ctx = patchManager.AcquireContext();
        }

        /// <inheritdoc />
        public override void Detach()
        {
            base.Detach();

            patchManager.FreeContext(ctx);

            Log.Info("Detached!");
        }

        private void SessionChanged(ITorchSession session, TorchSessionState state)
        {

            switch (state)
            {

                case TorchSessionState.Loaded:

                    Task.Delay(3000).ContinueWith((t) => {

                        MyRemoteControlPatch.Patch(ctx);
                        patchManager.Commit();

                    });

                    break;
            }
        }
    }
}