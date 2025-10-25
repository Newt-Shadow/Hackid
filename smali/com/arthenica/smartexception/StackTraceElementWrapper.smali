.class public Lcom/arthenica/smartexception/StackTraceElementWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/smartexception/StackTraceElementWrapper;->stackTraceElement:Ljava/lang/StackTraceElement;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/smartexception/StackTraceElementWrapper;->stackTraceElement:Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    return-object v0
.end method
