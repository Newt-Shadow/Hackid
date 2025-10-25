.class final Lcom/yandex/metrica/impl/ob/B$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/Revenue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/On;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/On;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/B$b;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/Kn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/Revenue;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/B$b;->a:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    return-object v0
.end method
