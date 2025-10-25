.class public Lcom/yandex/metrica/identifiers/AdsIdentifiersProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final synthetic a:I

.field private static final retriever:Lcom/yandex/metrica/identifiers/impl/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/identifiers/impl/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/identifiers/impl/h;-><init>(Ljava/util/Map;I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/yandex/metrica/identifiers/AdsIdentifiersProvider;->retriever:Lcom/yandex/metrica/identifiers/impl/h;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestIdentifiers(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.yandex.metrica.identifiers.extra.PROVIDER"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/yandex/metrica/identifiers/AdsIdentifiersProvider;->retriever:Lcom/yandex/metrica/identifiers/impl/h;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/metrica/identifiers/impl/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
