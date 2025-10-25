.class public Lqa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Landroid/content/IntentFilter;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lfa/o0;

.field private final c:Z

.field private final d:I

.field private e:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lqa/a;->g:Landroid/content/IntentFilter;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lfa/o0;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqa/a;->a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lqa/a;->b:Lfa/o0;

    .line 7
    .line 8
    iput-boolean p3, p0, Lqa/a;->c:Z

    .line 9
    .line 10
    iput p4, p0, Lqa/a;->d:I

    .line 11
    .line 12
    return-void
.end method

.method public static a(Landroid/app/Activity;Lfa/o0;ZI)Lqa/a;
    .locals 1

    .line 1
    new-instance v0, Lqa/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lqa/a;-><init>(Landroid/app/Activity;Lfa/o0;ZI)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static g(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;Lfa/o0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, p0}, Lfa/o0;->m(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method b()Landroid/view/Display;
    .locals 2

    .line 1
    iget-object v0, p0, Lqa/a;->a:Landroid/app/Activity;

    .line 2
    .line 3
    const-string v1, "window"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public c()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/a;->e:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 2
    .line 3
    return-object v0
.end method

.method d()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lqa/a;->b()Landroid/view/Display;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lqa/a;->a:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq v1, v2, :cond_3

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->PORTRAIT_UP:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->LANDSCAPE_RIGHT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->LANDSCAPE_LEFT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_3
    if-eqz v0, :cond_5

    .line 42
    .line 43
    if-ne v0, v2, :cond_4

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->PORTRAIT_DOWN:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_5
    :goto_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;->PORTRAIT_UP:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 50
    .line 51
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/a;->e:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lqa/a;->f(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lqa/a;->d()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    sget-object v0, Lqa/a$b;->a:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eq p1, v0, :cond_4

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v1, 0x5a

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v1, 0x10e

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    const/16 v1, 0xb4

    .line 36
    .line 37
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lqa/a;->c:Z

    .line 38
    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    mul-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    :cond_5
    iget p1, p0, Lqa/a;->d:I

    .line 44
    .line 45
    add-int/2addr v1, p1

    .line 46
    add-int/lit16 v1, v1, 0x168

    .line 47
    .line 48
    rem-int/lit16 v1, v1, 0x168

    .line 49
    .line 50
    return v1
.end method

.method h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lqa/a;->d()Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lqa/a;->e:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 6
    .line 7
    iget-object v2, p0, Lqa/a;->b:Lfa/o0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lqa/a;->g(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;Lfa/o0;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lqa/a;->e:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;

    .line 13
    .line 14
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lqa/a;->f:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lqa/a$a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lqa/a$a;-><init>(Lqa/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lqa/a;->f:Landroid/content/BroadcastReceiver;

    .line 12
    .line 13
    iget-object v1, p0, Lqa/a;->a:Landroid/app/Activity;

    .line 14
    .line 15
    sget-object v2, Lqa/a;->g:Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lqa/a;->f:Landroid/content/BroadcastReceiver;

    .line 21
    .line 22
    iget-object v1, p0, Lqa/a;->a:Landroid/app/Activity;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqa/a;->f:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lqa/a;->a:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lqa/a;->f:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    return-void
.end method
