.class Ld0/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/i;

.field private b:Landroidx/lifecycle/k;


# direct methods
.method constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/z$a;->a:Landroidx/lifecycle/i;

    .line 5
    .line 6
    iput-object p2, p0, Ld0/z$a;->b:Landroidx/lifecycle/k;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/z$a;->a:Landroidx/lifecycle/i;

    .line 2
    .line 3
    iget-object v1, p0, Ld0/z$a;->b:Landroidx/lifecycle/k;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ld0/z$a;->b:Landroidx/lifecycle/k;

    .line 10
    .line 11
    return-void
.end method
