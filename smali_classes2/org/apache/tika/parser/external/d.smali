.class public final synthetic Lorg/apache/tika/parser/external/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Process;

.field public final synthetic b:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tika/parser/external/d;->a:Ljava/lang/Process;

    iput-object p2, p0, Lorg/apache/tika/parser/external/d;->b:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/parser/external/d;->a:Ljava/lang/Process;

    iget-object v1, p0, Lorg/apache/tika/parser/external/d;->b:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lorg/apache/tika/parser/external/ExternalParser;->a(Ljava/lang/Process;Ljava/io/InputStream;)V

    return-void
.end method
