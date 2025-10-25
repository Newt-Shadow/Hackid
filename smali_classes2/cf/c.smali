.class public final synthetic Lcf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lff/d;


# instance fields
.field public final synthetic a:Lgf/e;


# direct methods
.method public synthetic constructor <init>(Lgf/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/c;->a:Lgf/e;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcf/c;->a:Lgf/e;

    check-cast p1, Lgf/d;

    invoke-static {v0, p1}, Lcf/g;->b(Lgf/e;Lgf/d;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method
