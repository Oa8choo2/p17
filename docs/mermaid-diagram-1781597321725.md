```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'primaryColor': '#002855', 'primaryTextColor': '#fff', 'lineColor': '#aaa' }}}%%

graph TD
    %% Timeline axis
    subgraph TIMELINE ["SSH SESSION TIMELINE"]
        direction TB
        T1[ ] --- T2[ ] --- T3[ ] --- T4[ ] --- T5[ ] --- T6[ ] --- T7[ ]
    end

    %% Columns
    subgraph CLIENT ["CLIENT MACHINE USER"]
        direction TB
        C_Gen["Step 1: Generate Key Pair Client<br/>Public Key & Private Key Keep Secure"]
        C_Conn["Step 3: User connects<br/>e.g., ssh user@server"]
        C_Key[ ]
        C_Decrypt["Step 6: Client Decrypts Challenge<br/>Client uses its unique Private Key which only it<br/>has to decrypt the string."]
        C_Sign["Step 7: Sign Challenge and Send Back"]
        C_KeyIcon[ ]
    end

    subgraph SERVER ["SERVER MACHINE"]
        direction TB
        S_Stored["Stored in authorized_keys"]
        S_Key[ ]
        S_Ident["Step 4: Identify incoming Public Key<br/>Server checks against authorized_keys"]
        S_Enc["Step 5: Server Encrypts Challenge<br/>Server creates a unique challenge string and<br/>encrypts it using the user's Public Key."]
        S_Sign[ ]
        S_Verify["Step 8: Server Verifies Signature<br/>Server uses the user's Public Key to check if<br/>the signature matches the challenge it sent."]
        S_Succ["Step 9: Successful Verification<br/>Connection Accepted."]
        S_Estab["ESTABLISHED ENCRYPTED<br/>SSH SESSION"]
    end

    C_Gen -->|Step 2: Copy Public Key to Server| S_Stored
    C_Conn -->|Request to| S_Ident
    S_Enc -->|Sends Encrypted Challenge| C_Decrypt
    C_Sign -->|Signs the decrypted challenge the proof and sends it back to the Server.| S_Verify
    S_Verify --> S_Succ
    S_Succ --> S_Estab

    classDef stepNode fill:#fff,stroke:#002855,stroke-width:2px,rx:8,ry:8,color:#000;
    classDef headerNode fill:#002855,color:#fff,stroke:none,rx:5,ry:5;
    classDef timelineNode fill:none,stroke:none;
    classDef iconNode fill:none,stroke:none;

    class C_Gen,C_Conn,C_Decrypt,C_Sign stepNode;
    class S_Stored,S_Ident,S_Enc,S_Verify,S_Succ stepNode;
    class S_Estab headerNode;
    class T1,T2,T3,T4,T5,T6,T7 timelineNode;
    class C_Key,C_KeyIcon,S_Key,S_Sign iconNode;
```
