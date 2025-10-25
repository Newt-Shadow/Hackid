.class final Lio/sentry/android/ndk/NativeModuleListLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeLoadModuleList()[Lio/sentry/protocol/DebugImage;
.end method


# virtual methods
.method public a()[Lio/sentry/protocol/DebugImage;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/android/ndk/NativeModuleListLoader;->nativeLoadModuleList()[Lio/sentry/protocol/DebugImage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
