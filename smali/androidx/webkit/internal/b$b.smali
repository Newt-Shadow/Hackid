.class Landroidx/webkit/internal/b$b;
.super Landroid/webkit/WebMessagePort$WebMessageCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/internal/b;->m(Landroid/webkit/WebMessagePort;Lo1/n$a;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo1/n$a;


# direct methods
.method constructor <init>(Lo1/n$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/internal/b$b;->a:Lo1/n$a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebMessagePort$WebMessageCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMessage(Landroid/webkit/WebMessagePort;Landroid/webkit/WebMessage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/b$b;->a:Lo1/n$a;

    .line 2
    .line 3
    new-instance v1, Landroidx/webkit/internal/h1;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/webkit/internal/h1;-><init>(Landroid/webkit/WebMessagePort;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Landroidx/webkit/internal/h1;->h(Landroid/webkit/WebMessage;)Lo1/m;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Lo1/n$a;->onMessage(Lo1/n;Lo1/m;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
