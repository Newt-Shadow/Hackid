.class public Lio/flutter/embedding/engine/loader/FlutterLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;,
        Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    }
.end annotation


# static fields
.field static final AOT_SHARED_LIBRARY_NAME:Ljava/lang/String; = "aot-shared-library-name"

.field static final AOT_VMSERVICE_SHARED_LIBRARY_NAME:Ljava/lang/String; = "aot-vmservice-shared-library-name"

.field static final AUTOMATICALLY_REGISTER_PLUGINS_KEY:Ljava/lang/String; = "automatically-register-plugins"

.field private static final DEFAULT_KERNEL_BLOB:Ljava/lang/String; = "kernel_blob.bin"

.field private static final DEFAULT_LIBRARY:Ljava/lang/String; = "libflutter.so"

.field private static final DISABLE_MERGED_PLATFORM_UI_THREAD_KEY:Ljava/lang/String; = "io.flutter.embedding.android.DisableMergedPlatformUIThread"

.field private static final ENABLE_IMPELLER_META_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.EnableImpeller"

.field private static final ENABLE_SURFACE_CONTROL:Ljava/lang/String; = "io.flutter.embedding.android.EnableSurfaceControl"

.field private static final ENABLE_VULKAN_VALIDATION_META_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.EnableVulkanValidation"

.field static final FLUTTER_ASSETS_DIR_KEY:Ljava/lang/String; = "flutter-assets-dir"

.field private static final IMPELLER_ANTIALIAS_LINES:Ljava/lang/String; = "io.flutter.embedding.android.ImpellerAntialiasLines"

.field private static final IMPELLER_BACKEND_META_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.ImpellerBackend"

.field private static final IMPELLER_LAZY_SHADER_MODE:Ljava/lang/String; = "io.flutter.embedding.android.ImpellerLazyShaderInitialization"

.field private static final IMPELLER_OPENGL_GPU_TRACING_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.EnableOpenGLGPUTracing"

.field private static final IMPELLER_VULKAN_GPU_TRACING_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.EnableVulkanGPUTracing"

.field static final ISOLATE_SNAPSHOT_DATA_KEY:Ljava/lang/String; = "isolate-snapshot-data"

.field private static final LEAK_VM_META_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.LeakVM"

.field private static final OLD_GEN_HEAP_SIZE_META_DATA_KEY:Ljava/lang/String; = "io.flutter.embedding.android.OldGenHeapSize"

.field static final SNAPSHOT_ASSET_PATH_KEY:Ljava/lang/String; = "snapshot-asset-path"

.field private static final TAG:Ljava/lang/String; = "FlutterLoader"

.field private static final VMSERVICE_SNAPSHOT_LIBRARY:Ljava/lang/String; = "libvmservice_snapshot.so"

.field static final VM_SNAPSHOT_DATA_KEY:Ljava/lang/String; = "vm-snapshot-data"

.field private static instance:Lio/flutter/embedding/engine/loader/FlutterLoader;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

.field private flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field initResultFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;",
            ">;"
        }
    .end annotation
.end field

.field private initStartTimestampMillis:J

.field private initialized:Z

.field private settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->getFlutterJNIFactory()Lio/flutter/embedding/engine/FlutterJNI$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 1

    .line 2
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    .line 5
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 6
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/loader/FlutterLoader;->lambda$ensureInitializationCompleteAsync$1(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResources(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/loader/FlutterLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/loader/FlutterLoader;->lambda$ensureInitializationCompleteAsync$0(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 7
    .line 8
    iget-object v1, v1, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private initResources(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private static isLeakVM(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "io.flutter.embedding.android.LeakVM"

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private synthetic lambda$ensureInitializationCompleteAsync$0(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$ensureInitializationCompleteAsync$1(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResultFuture:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lio/flutter/util/HandlerCompat;->createAsyncHandler(Landroid/os/Looper;)Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v7, Lio/flutter/embedding/engine/loader/a;

    .line 18
    .line 19
    move-object v1, v7

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p2

    .line 23
    move-object v5, p3

    .line 24
    move-object v6, p4

    .line 25
    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/loader/a;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p1

    .line 33
    const-string p2, "FlutterLoader"

    .line 34
    .line 35
    const-string p3, "Flutter initialization failed."

    .line 36
    .line 37
    invoke-static {p2, p3, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p2
.end method


# virtual methods
.method public automaticallyRegisterPlugins()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 2
    .line 3
    iget-boolean v0, v0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->automaticallyRegisterPlugins:Z

    .line 4
    .line 5
    return v0
.end method

.method public ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "io.flutter.embedding.android.DisableMergedPlatformUIThread"

    .line 2
    .line 3
    const-string v1, "io.flutter.embedding.android.EnableImpeller"

    .line 4
    .line 5
    const-string v2, "--aot-shared-library-name="

    .line 6
    .line 7
    iget-boolean v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-ne v3, v4, :cond_14

    .line 21
    .line 22
    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 23
    .line 24
    if-eqz v3, :cond_13

    .line 25
    .line 26
    :try_start_0
    const-string v3, "FlutterLoader#ensureInitializationComplete"

    .line 27
    .line 28
    invoke-static {v3}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    .line 29
    .line 30
    .line 31
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    iget-object v4, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResultFuture:Ljava/util/concurrent/Future;

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    .line 39
    .line 40
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v6, "--icu-symbol-prefix=_binary_icudtl_dat"

    .line 46
    .line 47
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v7, "--icu-native-lib-path="

    .line 56
    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v7, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 61
    .line 62
    iget-object v7, v7, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v8, "libflutter.so"

    .line 73
    .line 74
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_1

    .line 85
    .line 86
    invoke-static {v5, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    const/4 p2, 0x0

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v8, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 99
    .line 100
    iget-object v8, v8, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->aotSharedLibraryName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 121
    .line 122
    iget-object v2, v2, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 131
    .line 132
    iget-object v2, v2, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->aotSharedLibraryName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v6, "--cache-dir-path="

    .line 150
    .line 151
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v6, v4, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->engineCachesPath:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 167
    .line 168
    iget-object v2, v2, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->domainNetworkPolicy:Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v2, :cond_2

    .line 171
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v6, "--domain-network-policy="

    .line 178
    .line 179
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v6, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 183
    .line 184
    iget-object v6, v6, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->domainNetworkPolicy:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_2
    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 197
    .line 198
    invoke-virtual {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;->getLogTag()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    if-eqz v2, :cond_3

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v6, "--log-tag="

    .line 210
    .line 211
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v6, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 215
    .line 216
    invoke-virtual {v6}, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;->getLogTag()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    const/16 v7, 0x80

    .line 239
    .line 240
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    if-eqz v2, :cond_4

    .line 248
    .line 249
    const-string v7, "io.flutter.embedding.android.OldGenHeapSize"

    .line 250
    .line 251
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    goto :goto_0

    .line 256
    :cond_4
    move v7, v6

    .line 257
    :goto_0
    if-nez v7, :cond_5

    .line 258
    .line 259
    const-string v7, "activity"

    .line 260
    .line 261
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    check-cast v7, Landroid/app/ActivityManager;

    .line 266
    .line 267
    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    .line 268
    .line 269
    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 273
    .line 274
    .line 275
    iget-wide v7, v8, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 276
    .line 277
    long-to-double v7, v7

    .line 278
    const-wide v9, 0x412e848000000000L    # 1000000.0

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    div-double/2addr v7, v9

    .line 284
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 285
    .line 286
    div-double/2addr v7, v9

    .line 287
    double-to-int v7, v7

    .line 288
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v9, "--old-gen-heap-size="

    .line 294
    .line 295
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 317
    .line 318
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 319
    .line 320
    mul-int/2addr v8, v7

    .line 321
    mul-int/lit8 v8, v8, 0xc

    .line 322
    .line 323
    mul-int/lit8 v8, v8, 0x4

    .line 324
    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v9, "--resource-cache-max-bytes-threshold="

    .line 331
    .line 332
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    const-string v7, "--prefetched-default-font-manager"

    .line 346
    .line 347
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    if-eqz v2, :cond_f

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    if-eqz v7, :cond_7

    .line 357
    .line 358
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_6

    .line 363
    .line 364
    const-string v1, "--enable-impeller=true"

    .line 365
    .line 366
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_1

    .line 370
    :cond_6
    const-string v1, "--enable-impeller=false"

    .line 371
    .line 372
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_7
    :goto_1
    const-string v1, "io.flutter.embedding.android.EnableVulkanValidation"

    .line 376
    .line 377
    invoke-virtual {v2, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_8

    .line 382
    .line 383
    const-string v1, "--enable-vulkan-validation"

    .line 384
    .line 385
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    :cond_8
    const-string v1, "io.flutter.embedding.android.EnableOpenGLGPUTracing"

    .line 389
    .line 390
    invoke-virtual {v2, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-eqz v1, :cond_9

    .line 395
    .line 396
    const-string v1, "--enable-opengl-gpu-tracing"

    .line 397
    .line 398
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    :cond_9
    const-string v1, "io.flutter.embedding.android.EnableVulkanGPUTracing"

    .line 402
    .line 403
    invoke-virtual {v2, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_a

    .line 408
    .line 409
    const-string v1, "--enable-vulkan-gpu-tracing"

    .line 410
    .line 411
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    :cond_a
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_b

    .line 419
    .line 420
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-eqz v0, :cond_b

    .line 425
    .line 426
    const-string v0, "--no-enable-merged-platform-ui-thread"

    .line 427
    .line 428
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    :cond_b
    const-string v0, "io.flutter.embedding.android.EnableSurfaceControl"

    .line 432
    .line 433
    invoke-virtual {v2, v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_c

    .line 438
    .line 439
    const-string v0, "--enable-surface-control"

    .line 440
    .line 441
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    :cond_c
    const-string v0, "io.flutter.embedding.android.ImpellerBackend"

    .line 445
    .line 446
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    if-eqz v0, :cond_d

    .line 451
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    const-string v7, "--impeller-backend="

    .line 458
    .line 459
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    :cond_d
    const-string v0, "io.flutter.embedding.android.ImpellerLazyShaderInitialization"

    .line 473
    .line 474
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-eqz v0, :cond_e

    .line 479
    .line 480
    const-string v0, "--impeller-lazy-shader-mode"

    .line 481
    .line 482
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    :cond_e
    const-string v0, "io.flutter.embedding.android.ImpellerAntialiasLines"

    .line 486
    .line 487
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_f

    .line 492
    .line 493
    const-string v0, "--impeller-antialias-lines"

    .line 494
    .line 495
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    :cond_f
    invoke-static {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->isLeakVM(Landroid/os/Bundle;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_10

    .line 503
    .line 504
    const-string v0, "true"

    .line 505
    .line 506
    goto :goto_2

    .line 507
    :cond_10
    const-string v0, "false"

    .line 508
    .line 509
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    const-string v2, "--leak-vm="

    .line 515
    .line 516
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 530
    .line 531
    .line 532
    move-result-wide v0

    .line 533
    iget-wide v7, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initStartTimestampMillis:J

    .line 534
    .line 535
    sub-long v10, v0, v7

    .line 536
    .line 537
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 538
    .line 539
    new-array v1, v6, [Ljava/lang/String;

    .line 540
    .line 541
    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    move-object v6, v1

    .line 546
    check-cast v6, [Ljava/lang/String;

    .line 547
    .line 548
    iget-object v8, v4, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->appStoragePath:Ljava/lang/String;

    .line 549
    .line 550
    iget-object v9, v4, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;->engineCachesPath:Ljava/lang/String;

    .line 551
    .line 552
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 553
    .line 554
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 559
    .line 560
    .line 561
    move-result v12

    .line 562
    move-object v4, v0

    .line 563
    move-object v5, p1

    .line 564
    move-object v7, p2

    .line 565
    invoke-virtual/range {v4 .. v12}, Lio/flutter/embedding/engine/FlutterJNI;->init(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 566
    .line 567
    .line 568
    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    .line 571
    if-eqz v3, :cond_11

    .line 572
    .line 573
    :try_start_2
    invoke-virtual {v3}, Lio/flutter/util/TraceSection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 574
    .line 575
    .line 576
    :cond_11
    return-void

    .line 577
    :catchall_0
    move-exception p1

    .line 578
    if-eqz v3, :cond_12

    .line 579
    .line 580
    :try_start_3
    invoke-virtual {v3}, Lio/flutter/util/TraceSection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    .line 582
    .line 583
    goto :goto_3

    .line 584
    :catchall_1
    move-exception p2

    .line 585
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 586
    .line 587
    .line 588
    :cond_12
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 589
    :catch_0
    move-exception p1

    .line 590
    const-string p2, "FlutterLoader"

    .line 591
    .line 592
    const-string v0, "Flutter initialization failed."

    .line 593
    .line 594
    invoke-static {p2, v0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    .line 596
    .line 597
    new-instance p2, Ljava/lang/RuntimeException;

    .line 598
    .line 599
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 600
    .line 601
    .line 602
    throw p2

    .line 603
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 604
    .line 605
    const-string p2, "ensureInitializationComplete must be called after startInitialization"

    .line 606
    .line 607
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw p1

    .line 611
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 612
    .line 613
    const-string p2, "ensureInitializationComplete must be called on the main thread"

    .line 614
    .line 615
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw p1
.end method

.method public ensureInitializationCompleteAsync(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v7, Lio/flutter/embedding/engine/loader/b;

    .line 26
    .line 27
    move-object v1, v7

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move-object v6, p4

    .line 33
    invoke-direct/range {v1 .. v6}, Lio/flutter/embedding/engine/loader/b;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "ensureInitializationComplete must be called after startInitialization"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "ensureInitializationComplete must be called on the main thread"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public findAppBundlePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->flutterAssetsDir:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->fullAssetPathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initialized:Z

    .line 2
    .line 3
    return v0
.end method

.method public startInitialization(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    invoke-direct {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V

    return-void
.end method

.method public startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    const-string v0, "FlutterLoader#startInitialization"

    .line 4
    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->settings:Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initStartTimestampMillis:J

    .line 8
    invoke-static {p1}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->load(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterApplicationInfo:Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    const-string p2, "display"

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 10
    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-static {p2, v1}, Lio/flutter/view/VsyncWaiter;->getInstance(Landroid/hardware/display/DisplayManager;Lio/flutter/embedding/engine/FlutterJNI;)Lio/flutter/view/VsyncWaiter;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lio/flutter/view/VsyncWaiter;->init()V

    .line 12
    new-instance p2, Lio/flutter/embedding/engine/loader/FlutterLoader$1;

    invoke-direct {p2, p0, p1}, Lio/flutter/embedding/engine/loader/FlutterLoader$1;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)V

    .line 13
    iget-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader;->initResultFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 15
    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "startInitialization must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
