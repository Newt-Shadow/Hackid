.class public final synthetic Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lt0/m;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lt0/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lt0/b;->b:Lt0/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lt0/b;->b:Lt0/m;

    invoke-static {v0, v1}, Lt0/c;->a(Ljava/lang/String;Lt0/m;)V

    return-void
.end method
