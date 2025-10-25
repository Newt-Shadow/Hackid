.class public Lec/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field private final a:Lcom/yandex/metrica/rtm/client/DataSender;


# direct methods
.method constructor <init>(Lec/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lec/b;->a()Lcom/yandex/metrica/rtm/client/DataSender;

    move-result-object p1

    iput-object p1, p0, Lec/g;->a:Lcom/yandex/metrica/rtm/client/DataSender;

    return-void
.end method

.method public constructor <init>(Lec/k;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Lec/b;

    new-instance v1, Lcom/yandex/metrica/rtm/client/DataSender;

    new-instance v2, Lec/m;

    invoke-direct {v2, p1}, Lec/m;-><init>(Lec/k;)V

    new-instance p1, Lcom/yandex/metrica/rtm/client/ReporterDescriptor;

    invoke-direct {p1, p2, p3}, Lcom/yandex/metrica/rtm/client/ReporterDescriptor;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2, p1}, Lcom/yandex/metrica/rtm/client/DataSender;-><init>(Lcom/yandex/metrica/rtm/client/IServiceReporter;Lcom/yandex/metrica/rtm/client/ReporterDescriptor;)V

    invoke-direct {v0, v1}, Lec/b;-><init>(Lcom/yandex/metrica/rtm/client/DataSender;)V

    invoke-direct {p0, v0}, Lec/g;-><init>(Lec/b;)V

    return-void
.end method
