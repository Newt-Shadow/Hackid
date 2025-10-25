.class public final synthetic Lfa/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lfa/u;


# direct methods
.method public synthetic constructor <init>(Lfa/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/q;->a:Lfa/u;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/q;->a:Lfa/u;

    invoke-static {v0, p1}, Lfa/u;->k(Lfa/u;Landroid/media/ImageReader;)V

    return-void
.end method
