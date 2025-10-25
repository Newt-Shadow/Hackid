.class public Lcom/yandex/metrica/impl/ob/gd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Eg$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Eg$d<",
        "Lcom/yandex/metrica/impl/ob/gd;",
        "Lcom/yandex/metrica/impl/ob/gd$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/Cg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Cg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gd$c;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/gd$c;->b:Lcom/yandex/metrica/impl/ob/Cg;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/Eg;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/gd$b;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/gd$c;->a(Lcom/yandex/metrica/impl/ob/gd$b;)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/gd$b;)Lcom/yandex/metrica/impl/ob/gd;
    .locals 3

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/gd;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/gd$b;->b:Lcom/yandex/metrica/impl/ob/mc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;-><init>(Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/gd$a;)V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gd$c;->b:Lcom/yandex/metrica/impl/ob/Cg;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/gd$c;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gd$c;->b:Lcom/yandex/metrica/impl/ob/Cg;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/gd$c;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->b(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/gd$b;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/pi;)V

    .line 13
    invoke-static {}, Lcom/yandex/metrica/impl/ob/U;->a()Lcom/yandex/metrica/impl/ob/U;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/U;)V

    .line 14
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->n()Lcom/yandex/metrica/impl/ob/e2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/e2;->a()Lcom/yandex/metrica/impl/ob/c2;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/c2;)V

    .line 15
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/gd$c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->c(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->r()Lcom/yandex/metrica/impl/ob/xb;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gd$c;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/xb;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/zb;

    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/zb;)V

    .line 19
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->a()Lcom/yandex/metrica/impl/ob/Bb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Bb;->a()Lcom/yandex/metrica/impl/ob/Ab;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Eg;->a(Lcom/yandex/metrica/impl/ob/Ab;)V

    return-object v0
.end method
