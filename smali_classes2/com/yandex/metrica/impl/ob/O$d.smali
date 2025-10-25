.class Lcom/yandex/metrica/impl/ob/O$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/b9;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/O;Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/O$d;->a:Lcom/yandex/metrica/impl/ob/b9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O$d;->a:Lcom/yandex/metrica/impl/ob/b9;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 4
    .line 5
    const-string v2, "COOKIE_BROWSERS"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/O$d;->a:Lcom/yandex/metrica/impl/ob/b9;

    .line 19
    .line 20
    new-instance v1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 21
    .line 22
    const-string v2, "BIND_ID_URL"

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 32
    .line 33
    .line 34
    const-string v0, "b_meta.dat"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/L0;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "browsers.dat"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/L0;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
