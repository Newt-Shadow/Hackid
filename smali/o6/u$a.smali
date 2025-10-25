.class Lo6/u$a;
.super Lo6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6/u;->g(Ljava/util/Iterator;Ln6/n;)Lo6/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Ln6/n;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ln6/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6/u$a;->c:Ljava/util/Iterator;

    .line 2
    .line 3
    iput-object p2, p0, Lo6/u$a;->d:Ln6/n;

    .line 4
    .line 5
    invoke-direct {p0}, Lo6/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Object;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lo6/u$a;->c:Ljava/util/Iterator;

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
    iget-object v0, p0, Lo6/u$a;->c:Ljava/util/Iterator;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lo6/u$a;->d:Ln6/n;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ln6/n;->apply(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lo6/b;->c()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
