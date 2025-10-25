package com.google.firebase.messaging;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
abstract class o {
    private static Executor a(String str) {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new s5.b(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor b() {
        return a("Firebase-Messaging-File-Io");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService c() {
        return new ScheduledThreadPoolExecutor(1, new s5.b("Firebase-Messaging-Init"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService d() {
        return r8.b.a().a(new s5.b("Firebase-Messaging-Intent-Handle"), r8.c.HIGH_SPEED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService e() {
        return Executors.newSingleThreadExecutor(new s5.b("Firebase-Messaging-Network-Io"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExecutorService f() {
        return Executors.newSingleThreadExecutor(new s5.b("Firebase-Messaging-Task"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService g() {
        return new ScheduledThreadPoolExecutor(1, new s5.b("Firebase-Messaging-Topics-Io"));
    }
}
