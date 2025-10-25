.class public final Ln5/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ln5/r;

.field private static final c:Ln5/s;


# instance fields
.field private a:Ln5/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Ln5/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ln5/s;-><init>(IZZII)V

    sput-object v6, Ln5/r;->c:Ln5/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Ln5/r;
    .locals 2

    .line 1
    const-class v0, Ln5/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln5/r;->b:Ln5/r;

    if-nez v1, :cond_0

    new-instance v1, Ln5/r;

    invoke-direct {v1}, Ln5/r;-><init>()V

    sput-object v1, Ln5/r;->b:Ln5/r;

    :cond_0
    sget-object v1, Ln5/r;->b:Ln5/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Ln5/s;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/r;->a:Ln5/s;

    return-object v0
.end method

.method public final declared-synchronized c(Ln5/s;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object p1, Ln5/r;->c:Ln5/s;

    .line 5
    .line 6
    iput-object p1, p0, Ln5/r;->a:Ln5/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Ln5/r;->a:Ln5/s;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ln5/s;->n()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Ln5/s;->n()I

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-ge v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_2
    :goto_0
    :try_start_2
    iput-object p1, p0, Ln5/r;->a:Ln5/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method
