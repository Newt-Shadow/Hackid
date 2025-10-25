.class final Lo2/f$b;
.super Lo2/p$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lo2/s;

.field private b:Lo2/p$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo2/p$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lo2/p;
    .locals 4

    .line 1
    new-instance v0, Lo2/f;

    .line 2
    .line 3
    iget-object v1, p0, Lo2/f$b;->a:Lo2/s;

    .line 4
    .line 5
    iget-object v2, p0, Lo2/f$b;->b:Lo2/p$b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lo2/f;-><init>(Lo2/s;Lo2/p$b;Lo2/f$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b(Lo2/s;)Lo2/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lo2/f$b;->a:Lo2/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Lo2/p$b;)Lo2/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lo2/f$b;->b:Lo2/p$b;

    .line 2
    .line 3
    return-object p0
.end method
