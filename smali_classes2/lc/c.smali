.class public final synthetic Llc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llc/d;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Llc/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc/c;->a:Llc/d;

    iput-object p2, p0, Llc/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Llc/c;->a:Llc/d;

    iget-object v1, p0, Llc/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Llc/d;->b(Llc/d;Ljava/lang/String;)V

    return-void
.end method
