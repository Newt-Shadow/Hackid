.class final Lo2/m$b;
.super Lo2/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lo2/w$c;

.field private b:Lo2/w$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo2/w$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lo2/w;
    .locals 4

    .line 1
    new-instance v0, Lo2/m;

    .line 2
    .line 3
    iget-object v1, p0, Lo2/m$b;->a:Lo2/w$c;

    .line 4
    .line 5
    iget-object v2, p0, Lo2/m$b;->b:Lo2/w$b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lo2/m;-><init>(Lo2/w$c;Lo2/w$b;Lo2/m$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b(Lo2/w$b;)Lo2/w$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lo2/m$b;->b:Lo2/w$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Lo2/w$c;)Lo2/w$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lo2/m$b;->a:Lo2/w$c;

    .line 2
    .line 3
    return-object p0
.end method
