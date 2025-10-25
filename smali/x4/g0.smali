.class public final Lx4/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/e0$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/g0$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lx4/n;

.field public final c:I

.field private final d:Lx4/l0;

.field private final e:Lx4/g0$a;

.field private volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx4/j;Landroid/net/Uri;ILx4/g0$a;)V
    .locals 1

    .line 1
    new-instance v0, Lx4/n$b;

    invoke-direct {v0}, Lx4/n$b;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lx4/n$b;->i(Landroid/net/Uri;)Lx4/n$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lx4/n$b;->b(I)Lx4/n$b;

    move-result-object p2

    invoke-virtual {p2}, Lx4/n$b;->a()Lx4/n;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lx4/g0;-><init>(Lx4/j;Lx4/n;ILx4/g0$a;)V

    return-void
.end method

.method public constructor <init>(Lx4/j;Lx4/n;ILx4/g0$a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lx4/l0;

    invoke-direct {v0, p1}, Lx4/l0;-><init>(Lx4/j;)V

    iput-object v0, p0, Lx4/g0;->d:Lx4/l0;

    .line 6
    iput-object p2, p0, Lx4/g0;->b:Lx4/n;

    .line 7
    iput p3, p0, Lx4/g0;->c:I

    .line 8
    iput-object p4, p0, Lx4/g0;->e:Lx4/g0$a;

    .line 9
    invoke-static {}, Ld4/n;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lx4/g0;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx4/g0;->d:Lx4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/l0;->t()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lx4/l;

    .line 7
    .line 8
    iget-object v1, p0, Lx4/g0;->d:Lx4/l0;

    .line 9
    .line 10
    iget-object v2, p0, Lx4/g0;->b:Lx4/n;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lx4/l;-><init>(Lx4/j;Lx4/n;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Lx4/l;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lx4/g0;->d:Lx4/l0;

    .line 19
    .line 20
    invoke-virtual {v1}, Lx4/l0;->o()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/Uri;

    .line 29
    .line 30
    iget-object v2, p0, Lx4/g0;->e:Lx4/g0$a;

    .line 31
    .line 32
    invoke-interface {v2, v1, v0}, Lx4/g0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lx4/g0;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    invoke-static {v0}, Ly4/q0;->n(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    invoke-static {v0}, Ly4/q0;->n(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lx4/g0;->d:Lx4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/l0;->q()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/g0;->d:Lx4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/l0;->s()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/g0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/g0;->d:Lx4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx4/l0;->r()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
