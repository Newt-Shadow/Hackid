.class public Lfa/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/o0$i;,
        Lfa/o0$h;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;JLandroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "com.idsport.plugins.camera/camera"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {v0, p1, p2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lfa/o0;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 27
    .line 28
    new-instance p2, Lio/flutter/plugin/common/MethodChannel;

    .line 29
    .line 30
    const-string p3, "com.idsport.plugins.camera/device"

    .line 31
    .line 32
    invoke-direct {p2, p1, p3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lfa/o0;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 36
    .line 37
    iput-object p4, p0, Lfa/o0;->a:Landroid/os/Handler;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lfa/o0;->e(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lfa/o0;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/o0;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lfa/o0;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lfa/o0;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic e(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Lfa/o0$h;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lfa/o0;->g(Lfa/o0$h;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private g(Lfa/o0$h;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/o0;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lfa/o0;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lfa/o0$f;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lfa/o0$f;-><init>(Lfa/o0;Lfa/o0$h;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private h(Lfa/o0$i;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/o0;->c:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lfa/o0;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lfa/o0$g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lfa/o0$g;-><init>(Lfa/o0;Lfa/o0$i;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public d(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/o0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lfa/n0;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3, p4}, Lfa/n0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method i()V
    .locals 1

    .line 1
    sget-object v0, Lfa/o0$h;->c:Lfa/o0$h;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lfa/o0;->f(Lfa/o0$h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Lfa/x;)V
    .locals 1

    .line 1
    sget-object v0, Lfa/o0$h;->e:Lfa/o0$h;

    .line 2
    .line 3
    invoke-virtual {p1}, Lfa/x;->d()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, v0, p1}, Lfa/o0;->g(Lfa/o0$h;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method k(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lfa/o0$h;->b:Lfa/o0$h;

    .line 2
    .line 3
    new-instance v1, Lfa/o0$c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lfa/o0$c;-><init>(Lfa/o0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lfa/o0;->g(Lfa/o0$h;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method l(Ljava/lang/Integer;Ljava/lang/Integer;Lia/b;Lha/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 10

    .line 1
    sget-object v0, Lfa/o0$h;->d:Lfa/o0$h;

    .line 2
    .line 3
    new-instance v9, Lfa/o0$b;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    move-object/from16 v8, p6

    .line 13
    .line 14
    invoke-direct/range {v1 .. v8}, Lfa/o0$b;-><init>(Lfa/o0;Ljava/lang/Integer;Ljava/lang/Integer;Lia/b;Lha/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    move-object v1, p0

    .line 18
    invoke-direct {p0, v0, v9}, Lfa/o0;->g(Lfa/o0$h;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public m(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V
    .locals 2

    .line 1
    sget-object v0, Lfa/o0$i;->b:Lfa/o0$i;

    .line 2
    .line 3
    new-instance v1, Lfa/o0$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lfa/o0$a;-><init>(Lfa/o0;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$DeviceOrientation;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lfa/o0;->h(Lfa/o0$i;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    sget-object v0, Lfa/o0$h;->b:Lfa/o0$h;

    .line 2
    .line 3
    new-instance v1, Lfa/o0$d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lfa/o0$d;-><init>(Lfa/o0;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lfa/o0;->g(Lfa/o0$h;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lfa/o0$h;->f:Lfa/o0$h;

    .line 2
    .line 3
    new-instance v1, Lfa/o0$e;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lfa/o0$e;-><init>(Lfa/o0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lfa/o0;->g(Lfa/o0$h;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
