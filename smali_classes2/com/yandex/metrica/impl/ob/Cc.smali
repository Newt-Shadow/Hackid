.class public Lcom/yandex/metrica/impl/ob/Cc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/Sb;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lcom/yandex/metrica/impl/ob/mc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Cc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Cc;->b:Landroid/location/LocationManager;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/Nc;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;Landroid/location/LocationManager;)Lcom/yandex/metrica/impl/ob/Cc;
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/Cc;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Nc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Nc;->b:Lcom/yandex/metrica/impl/ob/pi;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Nc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Cc;-><init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V

    .line 14
    .line 15
    .line 16
    return-object v7
.end method
