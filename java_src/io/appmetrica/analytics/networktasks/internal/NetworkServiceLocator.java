package io.appmetrica.analytics.networktasks.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes2.dex */
public final class NetworkServiceLocator implements NetworkServiceLifecycleObserver {
    public static final Companion Companion = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static volatile NetworkServiceLocator f21284b;

    /* renamed from: a  reason: collision with root package name */
    private final NetworkCore f21285a;

    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NetworkServiceLocator getInstance() {
            NetworkServiceLocator networkServiceLocator = NetworkServiceLocator.f21284b;
            if (networkServiceLocator == null) {
                m.s("instance");
                return null;
            }
            return networkServiceLocator;
        }

        public final void init() {
            if (NetworkServiceLocator.f21284b == null) {
                synchronized (NetworkServiceLocator.class) {
                    if (NetworkServiceLocator.f21284b == null) {
                        NetworkServiceLocator.f21284b = new NetworkServiceLocator();
                    }
                    t tVar = t.f32733a;
                }
            }
        }

        private Companion() {
        }

        public final void init(NetworkServiceLocator networkServiceLocator) {
            NetworkServiceLocator.f21284b = networkServiceLocator;
        }
    }

    public NetworkServiceLocator() {
        NetworkCore networkCore = new NetworkCore();
        networkCore.setName("IAA-NC");
        networkCore.start();
        this.f21285a = networkCore;
    }

    public static final NetworkServiceLocator getInstance() {
        return Companion.getInstance();
    }

    public static final void init() {
        Companion.init();
    }

    public final NetworkCore getNetworkCore() {
        return this.f21285a;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.NetworkServiceLifecycleObserver
    public void onCreate() {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.NetworkServiceLifecycleObserver
    public void onDestroy() {
        this.f21285a.stopTasks();
    }

    public static final void init(NetworkServiceLocator networkServiceLocator) {
        Companion.init(networkServiceLocator);
    }
}
