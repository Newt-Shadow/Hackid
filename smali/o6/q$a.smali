.class public final Lo6/q$a;
.super Lo6/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lo6/q$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lo6/o$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lo6/o$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lo6/q$a;->h(Ljava/lang/Object;)Lo6/q$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Ljava/lang/Object;)Lo6/q$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo6/o$a;->d(Ljava/lang/Object;)Lo6/o$a;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public varargs i([Ljava/lang/Object;)Lo6/q$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo6/o$a;->e([Ljava/lang/Object;)Lo6/o$b;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public j(Ljava/lang/Iterable;)Lo6/q$a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo6/o$a;->b(Ljava/lang/Iterable;)Lo6/o$b;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public k()Lo6/q;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo6/o$a;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lo6/o$a;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lo6/o$a;->b:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Lo6/q;->p([Ljava/lang/Object;I)Lo6/q;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
