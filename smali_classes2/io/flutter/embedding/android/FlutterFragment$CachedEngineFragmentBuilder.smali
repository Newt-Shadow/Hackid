.class public Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedEngineFragmentBuilder"
.end annotation


# instance fields
.field private destroyEngineWithFragment:Z

.field private final engineId:Ljava/lang/String;

.field private final fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;"
        }
    .end annotation
.end field

.field private handleDeeplinking:Z

.field private renderMode:Lio/flutter/embedding/android/RenderMode;

.field private shouldAttachEngineToActivity:Z

.field private shouldAutomaticallyHandleOnBackPressed:Z

.field private shouldDelayFirstAndroidViewDraw:Z

.field private transparencyMode:Lio/flutter/embedding/android/TransparencyMode;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->destroyEngineWithFragment:Z

    .line 5
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->handleDeeplinking:Z

    .line 6
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 7
    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 9
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 10
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 11
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 12
    iput-object p2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->engineId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-class v0, Lio/flutter/embedding/android/FlutterFragment;

    invoke-direct {p0, v0, p1}, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/flutter/embedding/android/FlutterFragment$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/embedding/android/FlutterFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lio/flutter/embedding/android/FlutterFragment;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->createArgs()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/p;->setArguments(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "The FlutterFragment subclass sent in the constructor ("

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ") does not match the expected return type."

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "Could not instantiate FlutterFragment subclass ("

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, ")"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v1
.end method

.method protected createArgs()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cached_engine_id"

    .line 7
    .line 8
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->engineId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "destroy_engine_with_fragment"

    .line 14
    .line 15
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->destroyEngineWithFragment:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string v1, "handle_deeplinking"

    .line 21
    .line 22
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->handleDeeplinking:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "flutterview_render_mode"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    .line 49
    .line 50
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "flutterview_transparency_mode"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "should_attach_engine_to_activity"

    .line 60
    .line 61
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string v1, "should_automatically_handle_on_back_pressed"

    .line 67
    .line 68
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    const-string v1, "should_delay_first_android_view_draw"

    .line 74
    .line 75
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public destroyEngineWithFragment(Z)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->destroyEngineWithFragment:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public handleDeeplinking(Ljava/lang/Boolean;)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->handleDeeplinking:Z

    .line 6
    .line 7
    return-object p0
.end method

.method public renderMode(Lio/flutter/embedding/android/RenderMode;)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public shouldAttachEngineToActivity(Z)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public shouldAutomaticallyHandleOnBackPressed(Z)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public shouldDelayFirstAndroidViewDraw(Z)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public transparencyMode(Lio/flutter/embedding/android/TransparencyMode;)Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$CachedEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 2
    .line 3
    return-object p0
.end method
