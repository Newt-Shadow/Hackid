.class public final Lz6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/a$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;

.field private static final e:Ljava/lang/String; = "a"


# instance fields
.field private final a:Ls6/q;

.field private final b:Ls6/a;

.field private c:Ls6/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz6/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lz6/a$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lz6/d;

    invoke-static {p1}, Lz6/a$b;->a(Lz6/a$b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lz6/a$b;->b(Lz6/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lz6/a$b;->c(Lz6/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lz6/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lz6/a;->a:Ls6/q;

    .line 4
    invoke-static {p1}, Lz6/a$b;->d(Lz6/a$b;)Ls6/a;

    move-result-object v0

    iput-object v0, p0, Lz6/a;->b:Ls6/a;

    .line 5
    invoke-static {p1}, Lz6/a$b;->e(Lz6/a$b;)Ls6/o;

    move-result-object p1

    iput-object p1, p0, Lz6/a;->c:Ls6/o;

    return-void
.end method

.method synthetic constructor <init>(Lz6/a$b;Lz6/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz6/a;-><init>(Lz6/a$b;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lz6/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    invoke-static {}, Lz6/a;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lz6/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized d()Ls6/n;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lz6/a;->c:Ls6/o;

    .line 3
    .line 4
    invoke-virtual {v0}, Ls6/o;->d()Ls6/n;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method
