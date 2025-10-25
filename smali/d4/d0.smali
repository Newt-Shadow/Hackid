.class public final synthetic Ld4/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld4/g0;


# direct methods
.method public synthetic constructor <init>(Ld4/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/d0;->a:Ld4/g0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/d0;->a:Ld4/g0;

    invoke-static {v0}, Ld4/g0;->x(Ld4/g0;)V

    return-void
.end method
