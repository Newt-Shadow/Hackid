.class public Lcom/yandex/metrica/impl/ob/Y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/N3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<COMPONENT::",
        "Lcom/yandex/metrica/impl/ob/S3;",
        ":",
        "Lcom/yandex/metrica/impl/ob/P3;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/N3<",
        "Lcom/yandex/metrica/impl/ob/X3;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/o4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/o4<",
            "TCOMPONENT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/o4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/o4<",
            "TCOMPONENT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Y3;->a:Lcom/yandex/metrica/impl/ob/o4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;)Lcom/yandex/metrica/impl/ob/R3;
    .locals 9

    .line 1
    new-instance v8, Lcom/yandex/metrica/impl/ob/X3;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Y3;->a:Lcom/yandex/metrica/impl/ob/o4;

    .line 4
    .line 5
    new-instance v4, Lcom/yandex/metrica/impl/ob/c4;

    .line 6
    .line 7
    iget-object v0, p3, Lcom/yandex/metrica/impl/ob/D3;->b:Lcom/yandex/metrica/impl/ob/D3$a;

    .line 8
    .line 9
    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/c4;-><init>(Lcom/yandex/metrica/impl/ob/D3$a;)V

    .line 10
    .line 11
    .line 12
    new-instance v6, Lcom/yandex/metrica/impl/ob/J3;

    .line 13
    .line 14
    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/J3;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ei;->a()Lcom/yandex/metrica/impl/ob/ei;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    move-object v0, v8

    .line 22
    move-object v1, p1

    .line 23
    move-object v2, p2

    .line 24
    move-object v3, p3

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/X3;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/c4;Lcom/yandex/metrica/impl/ob/o4;Lcom/yandex/metrica/impl/ob/J3;Lcom/yandex/metrica/impl/ob/ei;)V

    .line 26
    .line 27
    .line 28
    return-object v8
.end method
