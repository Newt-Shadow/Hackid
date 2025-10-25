.class final Ln5/e0;
.super Ln5/f0;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lm5/i;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lm5/i;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/e0;->a:Landroid/content/Intent;

    iput-object p2, p0, Ln5/e0;->b:Lm5/i;

    invoke-direct {p0}, Ln5/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/e0;->a:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ln5/e0;->b:Lm5/i;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-interface {v1, v0, v2}, Lm5/i;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
