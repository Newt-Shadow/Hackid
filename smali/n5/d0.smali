.class final Ln5/d0;
.super Ln5/f0;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/d0;->a:Landroid/content/Intent;

    iput-object p2, p0, Ln5/d0;->b:Landroid/app/Activity;

    iput p3, p0, Ln5/d0;->c:I

    invoke-direct {p0}, Ln5/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/d0;->a:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ln5/d0;->b:Landroid/app/Activity;

    .line 6
    .line 7
    iget v2, p0, Ln5/d0;->c:I

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
