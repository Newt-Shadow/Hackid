.class public final Lh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lh$a;

.field private static final b:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lh$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh$a;->a:Lh$a;

    .line 7
    .line 8
    new-instance v0, Le;

    .line 9
    .line 10
    invoke-direct {v0}, Le;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lh$a;->b:Lxc/d;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lh;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh$a;->g(Lh;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method public static synthetic b(Lh;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh$a;->h(Lh;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method public static synthetic c()Li;
    .locals 1

    .line 1
    invoke-static {}, Lh$a;->d()Li;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Li;
    .locals 1

    .line 1
    sget-object v0, Li;->a:Li;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final g(Lh;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    const-string v0, "reply"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "null cannot be cast to non-null type <root>.ToggleMessage"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Ld;

    .line 24
    .line 25
    :try_start_0
    invoke-interface {p0, p1}, Lh;->a(Ld;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-static {p0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {p0}, Lj;->a(Ljava/lang/Throwable;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final h(Lh;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0

    .line 1
    const-string p1, "reply"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {p0}, Lh;->isEnabled()Lc;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lj;->a(Ljava/lang/Throwable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final e()Lio/flutter/plugin/common/MessageCodec;
    .locals 1

    .line 1
    sget-object v0, Lh$a;->b:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/flutter/plugin/common/MessageCodec;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f(Lio/flutter/plugin/common/BinaryMessenger;Lh;)V
    .locals 4

    .line 1
    const-string v0, "binaryMessenger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 7
    .line 8
    const-string v1, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle"

    .line 9
    .line 10
    invoke-virtual {p0}, Lh$a;->e()Lio/flutter/plugin/common/MessageCodec;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lf;

    .line 21
    .line 22
    invoke-direct {v2, p2}, Lf;-><init>(Lh;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 33
    .line 34
    const-string v2, "dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.isEnabled"

    .line 35
    .line 36
    invoke-virtual {p0}, Lh$a;->e()Lio/flutter/plugin/common/MessageCodec;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v0, p1, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    new-instance p1, Lg;

    .line 46
    .line 47
    invoke-direct {p1, p2}, Lg;-><init>(Lh;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-void
.end method
