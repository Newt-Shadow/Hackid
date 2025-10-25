.class public final Lj0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/o$b;
    }
.end annotation


# static fields
.field public static final d:Lj0/o$b;

.field private static final e:Ljava/util/Set;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Lj0/e0;

.field private final b:Lid/l;

.field private final c:Lid/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj0/o$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lj0/o$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lj0/o;->d:Lj0/o$b;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lj0/o;->e:Ljava/util/Set;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lj0/o;->f:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lj0/e0;Lid/l;Lid/a;)V
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinatorProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj0/o;->a:Lj0/e0;

    .line 3
    iput-object p2, p0, Lj0/o;->b:Lid/l;

    .line 4
    iput-object p3, p0, Lj0/o;->c:Lid/a;

    return-void
.end method

.method public synthetic constructor <init>(Lj0/e0;Lid/l;Lid/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 5
    sget-object p2, Lj0/o$a;->e:Lj0/o$a;

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lj0/o;-><init>(Lj0/e0;Lid/l;Lid/a;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lj0/o;->e:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lj0/o;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Lj0/k0;
    .locals 5

    .line 1
    iget-object v0, p0, Lj0/o;->c:Lid/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lj0/o;->f:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lj0/o;->e:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    xor-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    const-string v4, "path"

    .line 31
    .line 32
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    new-instance v1, Lj0/p;

    .line 40
    .line 41
    const-string v2, "file"

    .line 42
    .line 43
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lj0/o;->a:Lj0/e0;

    .line 47
    .line 48
    iget-object v3, p0, Lj0/o;->b:Lid/l;

    .line 49
    .line 50
    invoke-interface {v3, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lj0/t;

    .line 55
    .line 56
    new-instance v4, Lj0/o$c;

    .line 57
    .line 58
    invoke-direct {v4, v0}, Lj0/o$c;-><init>(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0, v2, v3, v4}, Lj0/p;-><init>(Ljava/io/File;Lj0/e0;Lj0/t;Lid/a;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "There are multiple DataStores active for the same file: "

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    monitor-exit v1

    .line 99
    throw v0
.end method
