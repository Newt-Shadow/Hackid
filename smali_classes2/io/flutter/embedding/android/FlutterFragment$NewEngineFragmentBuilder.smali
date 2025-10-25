.class public Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewEngineFragmentBuilder"
.end annotation


# instance fields
.field private appBundlePath:Ljava/lang/String;

.field private dartEntrypoint:Ljava/lang/String;

.field private dartEntrypointArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dartLibraryUri:Ljava/lang/String;

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

.field private initialRoute:Ljava/lang/String;

.field private renderMode:Lio/flutter/embedding/android/RenderMode;

.field private shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

.field private shouldAttachEngineToActivity:Z

.field private shouldAutomaticallyHandleOnBackPressed:Z

.field private shouldDelayFirstAndroidViewDraw:Z

.field private transparencyMode:Lio/flutter/embedding/android/TransparencyMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "main"

    .line 2
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    const-string v1, "/"

    .line 4
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 6
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 8
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 9
    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 11
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 12
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 13
    const-class v0, Lio/flutter/embedding/android/FlutterFragment;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/flutter/embedding/android/FlutterFragment;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "main"

    .line 15
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    const-string v1, "/"

    .line 17
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 19
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 21
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 22
    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 24
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 25
    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 26
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public appBundlePath(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

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
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

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
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->createArgs()Landroid/os/Bundle;

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
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

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
    iget-object v3, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->fragmentClass:Ljava/lang/Class;

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
    const-string v1, "initial_route"

    .line 7
    .line 8
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "handle_deeplinking"

    .line 14
    .line 15
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    const-string v1, "app_bundle_path"

    .line 21
    .line 22
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->appBundlePath:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "dart_entrypoint"

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "dart_entrypoint_uri"

    .line 35
    .line 36
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypointArgs:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypointArgs:Ljava/util/List;

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    const-string v2, "dart_entrypoint_args"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const-string v2, "initialization_args"

    .line 64
    .line 65
    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterShellArgs;->toArray()[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "flutterview_render_mode"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 89
    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    sget-object v1, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    .line 94
    .line 95
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "flutterview_transparency_mode"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v1, "should_attach_engine_to_activity"

    .line 105
    .line 106
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const-string v1, "destroy_engine_with_fragment"

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    const-string v1, "should_automatically_handle_on_back_pressed"

    .line 118
    .line 119
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    const-string v1, "should_delay_first_android_view_draw"

    .line 125
    .line 126
    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method

.method public dartEntrypoint(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypoint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public dartEntrypointArgs(Ljava/util/List;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartEntrypointArgs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public dartLibraryUri(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->dartLibraryUri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public flutterShellArgs(Lio/flutter/embedding/engine/FlutterShellArgs;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shellArgs:Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleDeeplinking(Ljava/lang/Boolean;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->handleDeeplinking:Z

    .line 6
    .line 7
    return-object p0
.end method

.method public initialRoute(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->initialRoute:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public renderMode(Lio/flutter/embedding/android/RenderMode;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->renderMode:Lio/flutter/embedding/android/RenderMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public shouldAttachEngineToActivity(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAttachEngineToActivity:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public shouldAutomaticallyHandleOnBackPressed(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldAutomaticallyHandleOnBackPressed:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public shouldDelayFirstAndroidViewDraw(Z)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->shouldDelayFirstAndroidViewDraw:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public transparencyMode(Lio/flutter/embedding/android/TransparencyMode;)Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$NewEngineFragmentBuilder;->transparencyMode:Lio/flutter/embedding/android/TransparencyMode;

    .line 2
    .line 3
    return-object p0
.end method
