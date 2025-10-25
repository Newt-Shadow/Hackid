.class Lo6/b0$d$a;
.super Lo6/b0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6/b0$d;->b(I)Lo6/b0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo6/b0$d;


# direct methods
.method constructor <init>(Lo6/b0$d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo6/b0$d$a;->b:Lo6/b0$d;

    .line 2
    .line 3
    iput p2, p0, Lo6/b0$d$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Lo6/b0$c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Lo6/v;
    .locals 3

    .line 1
    iget-object v0, p0, Lo6/b0$d$a;->b:Lo6/b0$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo6/b0$d;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lo6/b0$b;

    .line 8
    .line 9
    iget v2, p0, Lo6/b0$d$a;->a:I

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lo6/b0$b;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lo6/c0;->b(Ljava/util/Map;Ln6/s;)Lo6/v;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
