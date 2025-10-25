.class public abstract Ltd/i0;
.super Lad/a;
.source "SourceFile"

# interfaces
.implements Lad/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd/i0$a;
    }
.end annotation


# static fields
.field public static final b:Ltd/i0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltd/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltd/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltd/i0;->b:Ltd/i0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lad/f;->h0:Lad/f$b;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lad/a;-><init>(Lad/i$c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic D0(Ltd/i0;ILjava/lang/String;ILjava/lang/Object;)Ltd/i0;
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltd/i0;->A0(ILjava/lang/String;)Ltd/i0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: limitedParallelism"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public A0(ILjava/lang/String;)Ltd/i0;
    .locals 1

    .line 1
    invoke-static {p1}, Lyd/n;->a(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyd/m;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2}, Lyd/m;-><init>(Ltd/i0;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public a(Lad/i$c;)Lad/i$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lad/f$a;->a(Lad/f;Lad/i$c;)Lad/i$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d0(Lad/e;)Lad/e;
    .locals 1

    .line 1
    new-instance v0, Lyd/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lyd/h;-><init>(Ltd/i0;Lad/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public g(Lad/i$c;)Lad/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lad/f$a;->b(Lad/f;Lad/i$c;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract q0(Lad/i;Ljava/lang/Runnable;)V
.end method

.method public final s(Lad/e;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lyd/h;

    .line 7
    .line 8
    invoke-virtual {p1}, Lyd/h;->s()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t0(Lad/i;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ltd/p0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Ltd/p0;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
