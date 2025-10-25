.class public final Lne/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/a0$a;
    }
.end annotation


# instance fields
.field private final a:Lne/y;

.field private final b:Lne/x;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lne/r;

.field private final f:Lne/s;

.field private final g:Lne/b0;

.field private final h:Lne/a0;

.field private final i:Lne/a0;

.field private final j:Lne/a0;

.field private final k:J

.field private final l:J

.field private final m:Lse/c;

.field private n:Lne/d;


# direct methods
.method public constructor <init>(Lne/y;Lne/x;Ljava/lang/String;ILne/r;Lne/s;Lne/b0;Lne/a0;Lne/a0;Lne/a0;JJLse/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lne/a0;->a:Lne/y;

    .line 3
    iput-object v2, v0, Lne/a0;->b:Lne/x;

    .line 4
    iput-object v3, v0, Lne/a0;->c:Ljava/lang/String;

    move v1, p4

    .line 5
    iput v1, v0, Lne/a0;->d:I

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lne/a0;->e:Lne/r;

    .line 7
    iput-object v4, v0, Lne/a0;->f:Lne/s;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lne/a0;->g:Lne/b0;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lne/a0;->h:Lne/a0;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lne/a0;->i:Lne/a0;

    move-object/from16 v1, p10

    .line 11
    iput-object v1, v0, Lne/a0;->j:Lne/a0;

    move-wide/from16 v1, p11

    .line 12
    iput-wide v1, v0, Lne/a0;->k:J

    move-wide/from16 v1, p13

    .line 13
    iput-wide v1, v0, Lne/a0;->l:J

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lne/a0;->m:Lse/c;

    return-void
.end method

.method public static synthetic k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lne/a0;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final E()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lne/a0;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final H()Lne/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->a:Lne/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lne/a0;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final a()Lne/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->g:Lne/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lne/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lne/a0;->n:Lne/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lne/d;->n:Lne/d$b;

    .line 6
    .line 7
    iget-object v1, p0, Lne/a0;->f:Lne/s;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lne/d$b;->b(Lne/s;)Lne/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lne/a0;->n:Lne/d;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method public final c()Lne/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->i:Lne/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lne/a0;->g:Lne/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lne/b0;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "response is not eligible for a body and must not be closed"

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public final e()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lne/a0;->f:Lne/s;

    .line 2
    .line 3
    iget v1, p0, Lne/a0;->d:I

    .line 4
    .line 5
    const/16 v2, 0x191

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x197

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v1, "Proxy-Authenticate"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "WWW-Authenticate"

    .line 22
    .line 23
    :goto_0
    invoke-static {v0, v1}, Lte/e;->a(Lne/s;Ljava/lang/String;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lne/a0;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Lse/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->m:Lse/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lne/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->e:Lne/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lne/a0;->f:Lne/s;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lne/s;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p2, p1

    .line 16
    :goto_0
    return-object p2
.end method

.method public final q()Lne/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->f:Lne/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget v0, p0, Lne/a0;->d:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gt v1, v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x12c

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    :cond_0
    return v2
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
    const-string v1, "Response{protocol="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lne/a0;->b:Lne/x;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", code="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lne/a0;->d:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", message="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lne/a0;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", url="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lne/a0;->a:Lne/y;

    .line 42
    .line 43
    invoke-virtual {v1}, Lne/y;->i()Lne/t;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x7d

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Lne/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->h:Lne/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Lne/a0$a;
    .locals 1

    .line 1
    new-instance v0, Lne/a0$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lne/a0$a;-><init>(Lne/a0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final x()Lne/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->j:Lne/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lne/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0;->b:Lne/x;

    .line 2
    .line 3
    return-object v0
.end method
