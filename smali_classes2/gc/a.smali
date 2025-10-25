.class public final Lgc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lxc/d;

.field public static final b:Lgc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgc/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgc/a;->b:Lgc/a;

    .line 7
    .line 8
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 9
    .line 10
    sget-object v1, Lgc/a$a;->e:Lgc/a$a;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lgc/a;->a:Lxc/d;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lgc/a;->b:Lgc/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgc/a;->c()Lhc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lhc/c;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lgc/a;->b:Lgc/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lgc/a;->c()Lhc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lhc/c;->b()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final c()Lhc/c;
    .locals 1

    .line 1
    sget-object v0, Lgc/a;->a:Lxc/d;

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/c;

    return-object v0
.end method
