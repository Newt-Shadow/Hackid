.class Lcom/yandex/metrica/impl/ob/Jh$d$b;
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
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$d$b;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

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
    .locals 7

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/Dh;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$d$b;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

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
    move-object v0, v6

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Dh;-><init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Lcom/yandex/metrica/impl/ob/Hh;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method
