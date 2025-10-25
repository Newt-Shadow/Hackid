.class Lcom/yandex/metrica/impl/ob/Jh$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Jh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Jh$d;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jh$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$d$a;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Hh;)Lcom/yandex/metrica/impl/ob/Ah;
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/qh;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$d$a;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Jh$d;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 6
    .line 7
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Jh;->d(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/di;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$d$a;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Jh$d;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Jh;->e(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/yh;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/yh;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move-object v0, v7

    .line 24
    move-object v1, p1

    .line 25
    move-object v2, p2

    .line 26
    move-object v6, p3

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/qh;-><init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Hh;)V

    .line 28
    .line 29
    .line 30
    return-object v7
.end method
