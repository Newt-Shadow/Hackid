.class Lo6/c0$a;
.super Lo6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field transient f:Ln6/s;


# direct methods
.method constructor <init>(Ljava/util/Map;Ln6/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo6/c;-><init>(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ln6/s;

    .line 9
    .line 10
    iput-object p1, p0, Lo6/c0$a;->f:Ln6/s;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6/d;->q()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method d()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6/d;->r()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic o()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lo6/c0$a;->x()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected x()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lo6/c0$a;->f:Ln6/s;

    .line 2
    .line 3
    invoke-interface {v0}, Ln6/s;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method
