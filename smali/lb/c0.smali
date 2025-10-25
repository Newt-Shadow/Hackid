.class public final Llb/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llb/c0;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/UUID;

.field private static d:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Llb/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Llb/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llb/c0;->a:Llb/c0;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Llb/c0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/util/UUID;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Llb/c0;->c:Ljava/util/UUID;

    .line 23
    .line 24
    sput-object v0, Llb/c0;->d:Ljava/util/UUID;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Llb/c0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Llb/c0;->c:Ljava/util/UUID;

    .line 5
    .line 6
    sput-object v1, Llb/c0;->d:Ljava/util/UUID;

    .line 7
    .line 8
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    .line 14
    throw v1
.end method

.method public final b()Ljava/util/UUID;
    .locals 3

    .line 1
    sget-object v0, Llb/c0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Llb/c0;->d:Ljava/util/UUID;

    .line 5
    .line 6
    sget-object v2, Llb/c0;->c:Ljava/util/UUID;

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Llb/c0;->d:Ljava/util/UUID;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    .line 24
    throw v1
.end method

.method public final c()Z
    .locals 3

    .line 1
    sget-object v0, Llb/c0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Llb/c0;->d:Ljava/util/UUID;

    .line 5
    .line 6
    sget-object v2, Llb/c0;->c:Ljava/util/UUID;

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final d()V
    .locals 3

    .line 1
    sget-object v0, Llb/c0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Llb/c0;->d:Ljava/util/UUID;

    .line 5
    .line 6
    sget-object v2, Llb/c0;->c:Ljava/util/UUID;

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lnb/a;->a:Lnb/a;

    .line 15
    .line 16
    invoke-virtual {v1}, Lnb/a;->c()Ljava/util/UUID;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Llb/c0;->d:Ljava/util/UUID;

    .line 21
    .line 22
    :cond_0
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    .line 28
    throw v1
.end method
