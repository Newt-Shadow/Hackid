.class public final Lcom/friflex/idchess_mobile/MainActivity;
.super Lio/flutter/embedding/android/FlutterActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/window/SplashScreenView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/friflex/idchess_mobile/MainActivity;->b(Landroid/window/SplashScreenView;)V

    return-void
.end method

.method private static final b(Landroid/window/SplashScreenView;)V
    .locals 1

    .line 1
    const-string v0, "splashScreenView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Li2/c;->a(Landroid/window/SplashScreenView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ld0/a1;->a(Landroid/view/Window;Z)V

    .line 7
    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1f

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Li2/a;->a(Lcom/friflex/idchess_mobile/MainActivity;)Landroid/window/SplashScreen;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Li2/d;

    .line 20
    .line 21
    invoke-direct {v1}, Li2/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Li2/b;->a(Landroid/window/SplashScreen;Landroid/window/SplashScreen$OnExitAnimationListener;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
