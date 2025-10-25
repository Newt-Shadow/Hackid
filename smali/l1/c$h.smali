.class Ll1/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/c;->p(Landroid/view/ViewGroup;Ll1/s;Ll1/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll1/c$k;

.field final synthetic b:Ll1/c;

.field private mViewBounds:Ll1/c$k;


# direct methods
.method constructor <init>(Ll1/c;Ll1/c$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/c$h;->b:Ll1/c;

    .line 2
    .line 3
    iput-object p2, p0, Ll1/c$h;->a:Ll1/c$k;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Ll1/c$h;->mViewBounds:Ll1/c$k;

    .line 9
    .line 10
    return-void
.end method
