package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import k7.e0;
import k7.w;
@SuppressLint({"ThreadPoolCreation"})
/* loaded from: classes.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* renamed from: a  reason: collision with root package name */
    static final w f8710a = new w(new k8.b() { // from class: l7.b
        @Override // k8.b
        public final Object get() {
            ScheduledExecutorService p10;
            p10 = ExecutorsRegistrar.p();
            return p10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    static final w f8711b = new w(new k8.b() { // from class: l7.c
        @Override // k8.b
        public final Object get() {
            ScheduledExecutorService q10;
            q10 = ExecutorsRegistrar.q();
            return q10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    static final w f8712c = new w(new k8.b() { // from class: l7.d
        @Override // k8.b
        public final Object get() {
            ScheduledExecutorService r10;
            r10 = ExecutorsRegistrar.r();
            return r10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    static final w f8713d = new w(new k8.b() { // from class: l7.e
        @Override // k8.b
        public final Object get() {
            ScheduledExecutorService s10;
            s10 = ExecutorsRegistrar.s();
            return s10;
        }
    });

    private static StrictMode.ThreadPolicy i() {
        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        int i10 = Build.VERSION.SDK_INT;
        detectNetwork.detectResourceMismatches();
        if (i10 >= 26) {
            detectNetwork.detectUnbufferedIo();
        }
        return detectNetwork.penaltyLog().build();
    }

    private static ThreadFactory j(String str, int i10) {
        return new b(str, i10, null);
    }

    private static ThreadFactory k(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return new b(str, i10, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService l(k7.d dVar) {
        return (ScheduledExecutorService) f8710a.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService m(k7.d dVar) {
        return (ScheduledExecutorService) f8712c.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService n(k7.d dVar) {
        return (ScheduledExecutorService) f8711b.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Executor o(k7.d dVar) {
        return l7.l.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService p() {
        return u(Executors.newFixedThreadPool(4, k("Firebase Background", 10, i())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService q() {
        return u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), k("Firebase Lite", 0, t())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService r() {
        return u(Executors.newCachedThreadPool(j("Firebase Blocking", 11)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScheduledExecutorService s() {
        return Executors.newSingleThreadScheduledExecutor(j("Firebase Scheduler", 0));
    }

    private static StrictMode.ThreadPolicy t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    private static ScheduledExecutorService u(ExecutorService executorService) {
        return new o(executorService, (ScheduledExecutorService) f8713d.get());
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        return Arrays.asList(k7.c.f(e0.a(j7.a.class, ScheduledExecutorService.class), e0.a(j7.a.class, ExecutorService.class), e0.a(j7.a.class, Executor.class)).f(new k7.g() { // from class: l7.f
            @Override // k7.g
            public final Object a(k7.d dVar) {
                ScheduledExecutorService l10;
                l10 = ExecutorsRegistrar.l(dVar);
                return l10;
            }
        }).d(), k7.c.f(e0.a(j7.b.class, ScheduledExecutorService.class), e0.a(j7.b.class, ExecutorService.class), e0.a(j7.b.class, Executor.class)).f(new k7.g() { // from class: l7.g
            @Override // k7.g
            public final Object a(k7.d dVar) {
                ScheduledExecutorService m10;
                m10 = ExecutorsRegistrar.m(dVar);
                return m10;
            }
        }).d(), k7.c.f(e0.a(j7.c.class, ScheduledExecutorService.class), e0.a(j7.c.class, ExecutorService.class), e0.a(j7.c.class, Executor.class)).f(new k7.g() { // from class: l7.h
            @Override // k7.g
            public final Object a(k7.d dVar) {
                ScheduledExecutorService n10;
                n10 = ExecutorsRegistrar.n(dVar);
                return n10;
            }
        }).d(), k7.c.e(e0.a(j7.d.class, Executor.class)).f(new k7.g() { // from class: l7.i
            @Override // k7.g
            public final Object a(k7.d dVar) {
                Executor o10;
                o10 = ExecutorsRegistrar.o(dVar);
                return o10;
            }
        }).d());
    }
}
