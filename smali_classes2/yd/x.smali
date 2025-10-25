.class public final Lyd/x;
.super Ltd/i0;
.source "SourceFile"

# interfaces
.implements Ltd/u0;


# instance fields
.field private final synthetic c:Ltd/u0;

.field private final d:Ltd/i0;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltd/i0;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltd/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Ltd/u0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ltd/u0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ltd/r0;->a()Ltd/u0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    iput-object v0, p0, Lyd/x;->c:Ltd/u0;

    .line 20
    .line 21
    iput-object p1, p0, Lyd/x;->d:Ltd/i0;

    .line 22
    .line 23
    iput-object p2, p0, Lyd/x;->e:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public h(JLtd/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/x;->c:Ltd/u0;

    invoke-interface {v0, p1, p2, p3}, Ltd/u0;->h(JLtd/l;)V

    return-void
.end method

.method public q0(Lad/i;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/x;->d:Ltd/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ltd/i0;->q0(Lad/i;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t0(Lad/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/x;->d:Ltd/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ltd/i0;->t0(Lad/i;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/x;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
