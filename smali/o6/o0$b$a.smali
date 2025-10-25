.class Lo6/o0$b$a;
.super Lo6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6/o0$b;->d()Lo6/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final c:Ljava/util/Iterator;

.field final synthetic d:Lo6/o0$b;


# direct methods
.method constructor <init>(Lo6/o0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6/o0$b$a;->d:Lo6/o0$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lo6/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lo6/o0$b;->a:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lo6/o0$b$a;->c:Ljava/util/Iterator;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lo6/o0$b$a;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lo6/o0$b$a;->c:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lo6/o0$b$a;->d:Lo6/o0$b;

    .line 16
    .line 17
    iget-object v1, v1, Lo6/o0$b;->b:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lo6/b;->c()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
