.class public final Ll0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/d$b;
    }
.end annotation


# static fields
.field public static final f:Ll0/d$b;

.field private static final g:Ljava/util/Set;

.field private static final h:Ll0/h;


# instance fields
.field private final a:Laf/k;

.field private final b:Ll0/c;

.field private final c:Lid/Function2;

.field private final d:Lid/a;

.field private final e:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll0/d$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ll0/d$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll0/d;->f:Ll0/d$b;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ll0/d;->g:Ljava/util/Set;

    .line 15
    .line 16
    new-instance v0, Ll0/h;

    .line 17
    .line 18
    invoke-direct {v0}, Ll0/h;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ll0/d;->h:Ll0/h;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Laf/k;Ll0/c;Lid/Function2;Lid/a;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinatorProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll0/d;->a:Laf/k;

    .line 3
    iput-object p2, p0, Ll0/d;->b:Ll0/c;

    .line 4
    iput-object p3, p0, Ll0/d;->c:Lid/Function2;

    .line 5
    iput-object p4, p0, Ll0/d;->d:Lid/a;

    .line 6
    new-instance p1, Ll0/d$c;

    invoke-direct {p1, p0}, Ll0/d$c;-><init>(Ll0/d;)V

    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    move-result-object p1

    iput-object p1, p0, Ll0/d;->e:Lxc/d;

    return-void
.end method

.method public synthetic constructor <init>(Laf/k;Ll0/c;Lid/Function2;Lid/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 7
    sget-object p3, Ll0/d$a;->e:Ll0/d$a;

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ll0/d;-><init>(Laf/k;Ll0/c;Lid/Function2;Lid/a;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ll0/d;->g:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ll0/h;
    .locals 1

    .line 1
    sget-object v0, Ll0/d;->h:Ll0/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Ll0/d;)Laf/s0;
    .locals 0

    .line 1
    invoke-direct {p0}, Ll0/d;->f()Laf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Ll0/d;)Lid/a;
    .locals 0

    .line 1
    iget-object p0, p0, Ll0/d;->d:Lid/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f()Laf/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/d;->e:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Laf/s0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Lj0/k0;
    .locals 10

    .line 1
    invoke-direct {p0}, Ll0/d;->f()Laf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Laf/s0;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ll0/d;->h:Ll0/h;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v2, Ll0/d;->g:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    xor-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    new-instance v0, Ll0/e;

    .line 27
    .line 28
    iget-object v5, p0, Ll0/d;->a:Laf/k;

    .line 29
    .line 30
    invoke-direct {p0}, Ll0/d;->f()Laf/s0;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v7, p0, Ll0/d;->b:Ll0/c;

    .line 35
    .line 36
    iget-object v1, p0, Ll0/d;->c:Lid/Function2;

    .line 37
    .line 38
    invoke-direct {p0}, Ll0/d;->f()Laf/s0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Ll0/d;->a:Laf/k;

    .line 43
    .line 44
    invoke-interface {v1, v2, v3}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v8, v1

    .line 49
    check-cast v8, Lj0/t;

    .line 50
    .line 51
    new-instance v9, Ll0/d$d;

    .line 52
    .line 53
    invoke-direct {v9, p0}, Ll0/d$d;-><init>(Ll0/d;)V

    .line 54
    .line 55
    .line 56
    move-object v4, v0

    .line 57
    invoke-direct/range {v4 .. v9}, Ll0/e;-><init>(Laf/k;Laf/s0;Ll0/c;Lj0/t;Lid/a;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "There are multiple DataStores active for the same file: "

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    monitor-exit v1

    .line 95
    throw v0
.end method
