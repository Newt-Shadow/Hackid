.class public final synthetic Lorg/apache/tika/sax/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/sax/SafeContentHandler$Output;


# instance fields
.field public final synthetic a:Lorg/apache/tika/sax/SafeContentHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tika/sax/SafeContentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/sax/a;->a:Lorg/apache/tika/sax/SafeContentHandler;

    return-void
.end method


# virtual methods
.method public final write([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/sax/a;->a:Lorg/apache/tika/sax/SafeContentHandler;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/tika/sax/SafeContentHandler;->b(Lorg/apache/tika/sax/SafeContentHandler;[CII)V

    return-void
.end method
