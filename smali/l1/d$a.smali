.class Ll1/d$a;
.super Ll1/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/d;->m0(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ll1/d;


# direct methods
.method constructor <init>(Ll1/d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/d$a;->b:Ll1/d;

    .line 2
    .line 3
    iput-object p2, p0, Ll1/d$a;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ll1/m;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public e(Ll1/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll1/d$a;->a:Landroid/view/View;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v0, v1}, Ll1/a0;->g(Landroid/view/View;F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ll1/d$a;->a:Landroid/view/View;

    .line 9
    .line 10
    invoke-static {v0}, Ll1/a0;->a(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ll1/l;->S(Ll1/l$f;)Ll1/l;

    .line 14
    .line 15
    .line 16
    return-void
.end method
