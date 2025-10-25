.class Lcom/journeyapps/barcodescanner/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/journeyapps/barcodescanner/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/e;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/e$b;->a:Lcom/journeyapps/barcodescanner/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/e$b;->a:Lcom/journeyapps/barcodescanner/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/e;->g(Lcom/journeyapps/barcodescanner/e;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lh9/n;->c:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/e;->m(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/e$b;->a:Lcom/journeyapps/barcodescanner/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/e;->h(Lcom/journeyapps/barcodescanner/e;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/journeyapps/barcodescanner/e;->i()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Camera closed; finishing activity"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/e$b;->a:Lcom/journeyapps/barcodescanner/e;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/e;->j(Lcom/journeyapps/barcodescanner/e;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method
