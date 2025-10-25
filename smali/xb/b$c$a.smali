.class Lxb/b$c$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/b$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxb/b$c;


# direct methods
.method constructor <init>(Lxb/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/b$c$a;->a:Lxb/b$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxb/b$c$a;->a:Lxb/b$c;

    .line 2
    .line 3
    iget-object v0, v0, Lxb/b$c;->c:Lxb/b;

    .line 4
    .line 5
    invoke-static {v0}, Lxb/b;->b(Lxb/b;)Lxb/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lxb/b$c$a;->a:Lxb/b$c;

    .line 10
    .line 11
    iget-object v1, v1, Lxb/b$c;->b:Lxb/d;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lxb/f;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
