.class public final synthetic Lgf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lff/d;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgf/d;

    invoke-static {p1}, Lgf/d;->a(Lgf/d;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
