.class public final synthetic Lorg/apache/tika/mime/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/net/URL;

    invoke-static {p1}, Lorg/apache/tika/mime/MimeTypesFactory;->a(Ljava/net/URL;)V

    return-void
.end method
