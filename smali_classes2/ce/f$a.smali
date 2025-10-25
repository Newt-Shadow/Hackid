.class final Lce/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd/l;
.implements Ltd/s2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final a:Ltd/n;

.field public final b:Ljava/lang/Object;

.field final synthetic c:Lce/f;


# direct methods
.method public constructor <init>(Lce/f;Ltd/n;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lce/f$a;->c:Lce/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lce/f$a;->a:Ltd/n;

    .line 7
    .line 8
    iput-object p3, p0, Lce/f$a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lce/f;Lce/f$a;Ljava/lang/Throwable;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lce/f$a;->f(Lce/f;Lce/f$a;Ljava/lang/Throwable;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lce/f;Lce/f$a;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lce/f$a;->j(Lce/f;Lce/f$a;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lce/f;Lce/f$a;Ljava/lang/Throwable;)Lxc/t;
    .locals 0

    .line 1
    iget-object p1, p1, Lce/f$a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lce/f;->d(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final j(Lce/f;Lce/f$a;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {}, Lce/f;->w()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p1, Lce/f$a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p2, p0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lce/f$a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lce/f;->d(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0, p1}, Ltd/n;->A(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lyd/c0;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0, p1, p2}, Ltd/n;->b(Lyd/c0;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Lid/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxc/t;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lce/f$a;->h(Lxc/t;Ljava/lang/Object;Lid/p;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(Lxc/t;Lid/p;)V
    .locals 2

    .line 1
    invoke-static {}, Lce/f;->w()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lce/f$a;->c:Lce/f;

    .line 6
    .line 7
    iget-object v1, p0, Lce/f$a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lce/f$a;->a:Ltd/n;

    .line 13
    .line 14
    iget-object v0, p0, Lce/f$a;->c:Lce/f;

    .line 15
    .line 16
    new-instance v1, Lce/d;

    .line 17
    .line 18
    invoke-direct {v1, v0, p0}, Lce/d;-><init>(Lce/f;Lce/f$a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1, v1}, Ltd/n;->P(Ljava/lang/Object;Lid/l;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public g(Ltd/i0;Lxc/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0, p1, p2}, Ltd/n;->i(Ltd/i0;Ljava/lang/Object;)V

    return-void
.end method

.method public getContext()Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0}, Ltd/n;->getContext()Lad/i;

    move-result-object v0

    return-object v0
.end method

.method public h(Lxc/t;Ljava/lang/Object;Lid/p;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p3, p0, Lce/f$a;->c:Lce/f;

    .line 2
    .line 3
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    .line 4
    .line 5
    new-instance v1, Lce/e;

    .line 6
    .line 7
    invoke-direct {v1, p3, p0}, Lce/e;-><init>(Lce/f;Lce/f$a;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, v1}, Ltd/n;->d(Ljava/lang/Object;Ljava/lang/Object;Lid/p;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lce/f;->w()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p3, p0, Lce/f$a;->c:Lce/f;

    .line 21
    .line 22
    iget-object v0, p0, Lce/f$a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object p1
.end method

.method public bridge synthetic i(Ltd/i0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lxc/t;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lce/f$a;->g(Ltd/i0;Lxc/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lid/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0, p1}, Ltd/n;->l(Lid/l;)V

    return-void
.end method

.method public o(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0, p1}, Ltd/n;->o(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;Lid/p;)V
    .locals 0

    .line 1
    check-cast p1, Lxc/t;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lce/f$a;->e(Lxc/t;Lid/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lce/f$a;->a:Ltd/n;

    invoke-virtual {v0, p1}, Ltd/n;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
