.class Lo6/d$b$a;
.super Lo6/y$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lo6/d$b;


# direct methods
.method constructor <init>(Lo6/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6/d$b$a;->a:Lo6/d$b;

    .line 2
    .line 3
    invoke-direct {p0}, Lo6/y$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/d$b$a;->a:Lo6/d$b;

    .line 2
    .line 3
    iget-object v0, v0, Lo6/d$b;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lo6/i;->c(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method d()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/d$b$a;->a:Lo6/d$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lo6/d$b$b;

    .line 2
    .line 3
    iget-object v1, p0, Lo6/d$b$a;->a:Lo6/d$b;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo6/d$b$b;-><init>(Lo6/d$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lo6/d$b$a;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p1, Ljava/util/Map$Entry;

    .line 15
    .line 16
    iget-object v0, p0, Lo6/d$b$a;->a:Lo6/d$b;

    .line 17
    .line 18
    iget-object v0, v0, Lo6/d$b;->d:Lo6/d;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lo6/d;->n(Lo6/d;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1
.end method
